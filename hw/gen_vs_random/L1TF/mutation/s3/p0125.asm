.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1167476476
lea ebx, qword ptr [rbx + rdx + 53812]
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
add al, -67 # instrumentation
setz cl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
lea rsi, qword ptr [rsi]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rdi, rbx
sbb dl, cl
xor dl, bl
lea rbx, qword ptr [rsi + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
