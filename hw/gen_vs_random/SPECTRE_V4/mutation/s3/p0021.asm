.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, -30
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, 124
test rax, -1395313845
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, 9
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, 28568
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 1682181214
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor eax, 550678097
or ax, -29521
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 247
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
