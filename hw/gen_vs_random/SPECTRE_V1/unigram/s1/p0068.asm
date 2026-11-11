.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -77
setp dl
seto dl
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
cmovbe dx, ax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
add eax, -1174744897
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov dil, al
add bl, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
add bl, -12 # instrumentation
lea rcx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
