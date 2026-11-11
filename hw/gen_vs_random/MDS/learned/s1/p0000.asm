.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
test dil, dl
jmp .bb_0.1
.bb_0.1:
xor bl, -61
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
or al, -58
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
xor bl, sil
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
