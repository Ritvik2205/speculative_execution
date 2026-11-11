.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
cmp ecx, -45
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
xor rax, -2035087432
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 72
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, -26 # instrumentation
adc ecx, esi
jmp .bb_0.2
.bb_0.2:
movsx rdi, cx
cmp al, al
cmp sil, 85
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
cmp rdi, rax
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
