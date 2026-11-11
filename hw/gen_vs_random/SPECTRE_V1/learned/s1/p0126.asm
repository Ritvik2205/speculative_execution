.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
setnb al
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
or di, cx
xchg si, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
movsx rbx, al
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
lea rax, qword ptr [rbx]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmovnle rsi, rsi
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rax
xor cl, al
btr ecx, edx
setp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
