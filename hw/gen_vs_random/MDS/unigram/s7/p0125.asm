.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 177
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
or cx, 49
xor ecx, 8
or rax, -1561934807
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 34
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and al, 67 # instrumentation
cmovl rdi, rsi
jmp .bb_0.1
.bb_0.1:
and dil, 8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
bts rsi, 205
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or al, -58
cmovns ax, dx
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and sil, sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
