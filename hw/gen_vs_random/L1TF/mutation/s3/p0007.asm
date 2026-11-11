.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -110 # instrumentation
btr cx, 181
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setz bl
btr si, dx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or al, cl
cmovb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mov ebx, 675401645
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add dl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovno rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
lea rbx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 44
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
lea ecx, qword ptr [rbx + rbx + 2102]
add esi, -124
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
