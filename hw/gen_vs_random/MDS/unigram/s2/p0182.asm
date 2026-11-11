.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 87
or edi, edi
btr bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 83
and rdi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdi]
btr cx, 9
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and bl, -74 # instrumentation
cmovns esi, edi
btc ax, 15
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
cmovnb eax, esi
or cx, 39
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
