.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
cwd
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and bl, -65
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
movzx ebx, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
movzx ax, al
test dil, -116
setno bl
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
