.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
add cl, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
xor al, al
adc di, si
movsx rdi, bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
sbb bl, cl
mov dl, bl
add al, -84 # instrumentation
lea eax, qword ptr [rbx + rbx + 39392]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
cmovl ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
