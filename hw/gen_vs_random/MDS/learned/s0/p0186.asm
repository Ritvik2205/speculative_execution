.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dl
xor dl, 34
test al, dl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
or al, -17
test dl, 9
test eax, -571234566
and bl, 68
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
test dil, -51
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and sil, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
