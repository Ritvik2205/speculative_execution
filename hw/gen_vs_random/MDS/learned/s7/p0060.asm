.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 31969
and eax, 943733866
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
xor cl, 15
bt rdx, 8
test bl, cl
or al, 16
and dl, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
btr edx, eax
and sil, sil
not bl
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and al, -55
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
