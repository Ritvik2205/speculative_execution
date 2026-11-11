.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdx
lea rax, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
cwd
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
and bl, 87
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
movzx ebx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
