.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, 205
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
neg al
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
btr esi, 37
add cl, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
sub di, 14
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
