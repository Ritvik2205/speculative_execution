.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
dec bx
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, rax
cmovs ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
movzx ebx, bx
test sil, 29
jmp .bb_0.1
.bb_0.1:
add cl, -20
bts ebx, esi
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
mov ecx, edx
xor bl, dl
adc rax, 1431457700
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
