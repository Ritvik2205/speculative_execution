.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdx]
xor cl, cl
lea ax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
or bl, 114
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ebx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
add dl, 76 # instrumentation
sbb ax, 10551
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
imul dx, di, -95
add dl, -10 # instrumentation
cmovns eax, ebx
setle dl
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
cmovo ecx, esi
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
not edi
lea eax, qword ptr [rcx + rcx + 31865]
mul ebx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 57
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
