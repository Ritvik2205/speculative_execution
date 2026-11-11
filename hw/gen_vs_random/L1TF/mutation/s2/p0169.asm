.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
lea ebx, qword ptr [rbx + rdx + 53812]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add al, -67 # instrumentation
setz cl
and eax, 1167476476
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdi, rbx
lea rbx, qword ptr [rsi + rcx]
sbb dl, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
