.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and esi, 77
setnz cl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
add bx, -65
sub cl, -21
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
cmovo cx, si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
xor ax, 913
cmovnbe rdi, rsi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
lea ax, qword ptr [rax]
lea cx, qword ptr [rsi + rdx + 61792]
not cx
lea ax, qword ptr [rcx + rbx + 26263]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
xor cx, cx
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
