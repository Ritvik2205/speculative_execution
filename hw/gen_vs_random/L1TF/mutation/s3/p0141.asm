.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
test ax, 636
setnb bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
setl cl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor al, bl
imul dx, di, -95
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
test eax, esi
movzx ax, bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
mov rax, rsi
and rax, 1163013815
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
sub ax, -27107
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
