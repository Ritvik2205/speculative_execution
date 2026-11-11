.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 104
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
lea ebx, qword ptr [rdi + rbx + 24078]
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
neg dl
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
mul rax
imul si, bx
btr cx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -33
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
btc bx, dx
mov bx, 21854
xor bl, cl
jmp .bb_0.2
.bb_0.2:
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
