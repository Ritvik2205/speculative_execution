.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, cx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
add rax, 1633593912
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or dl, -67
sbb bl, al
cmovb di, cx
setnp cl
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
mov ecx, edx
xor bl, dl
adc rax, 41513450
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
sub edx, ebx
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
