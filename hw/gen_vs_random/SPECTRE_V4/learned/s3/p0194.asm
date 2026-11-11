.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
cmovno esi, ebx
neg rax
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
add al, cl
xor al, 57
cmp bl, -16
add dl, al
mov al, cl
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
xor ax, 30500
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
