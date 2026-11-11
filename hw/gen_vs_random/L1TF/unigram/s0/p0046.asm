.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
cmp dl, al
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
cmovl rdi, rax
jmp .bb_0.1
.bb_0.1:
add cl, -41 # instrumentation
adc di, dx
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
lea ecx, qword ptr [rdx]
cmovs ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
test ebx, edi
add dl, -56 # instrumentation
cmovs rdi, rsi
adc dl, -12
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
