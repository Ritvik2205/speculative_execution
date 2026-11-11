.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
sbb rax, 1183957102
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovo rbx, rdi
sbb cl, -11
cwde
btc rax, 14
xor ax, 27703
jmp .bb_0.1
.bb_0.1:
test eax, 645518295
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
lea ebx, qword ptr [rdi + rbx]
and dil, 58
xor edi, edx
add dl, cl
jmp .bb_0.2
.bb_0.2:
or dl, dl
sub cl, -49
lea rdx, qword ptr [rcx]
btc edx, edi
cwd
lea edi, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
lea rdi, qword ptr [rbx + rdi + 45901]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
sub ax, 7297
cmovnbe rdx, rbx
bt dx, 132
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
