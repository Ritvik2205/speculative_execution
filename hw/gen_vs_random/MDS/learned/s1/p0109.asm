.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and di, 99
xor al, 9
test dil, -51
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
test sil, -96
test eax, -409834435
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
test al, dl
xor cl, 55
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor dl, sil
or dil, -71
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
