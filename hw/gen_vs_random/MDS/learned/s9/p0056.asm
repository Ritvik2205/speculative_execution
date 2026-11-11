.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or sil, -49
xor bl, 67
or dl, sil
and ax, 29207
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, -61
xor al, cl
and ax, -4410
or al, sil
and ax, 27170
xor cl, 15
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
btc ax, 1
or sil, cl
or bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
