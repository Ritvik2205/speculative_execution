.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
sub bl, -19
sub al, bl
sub al, sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
adc cl, -81
cmp rcx, 44
adc bl, 88
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
sub dl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
mov dil, cl
and al, -23
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
