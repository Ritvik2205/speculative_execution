.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cx, 62
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
lea rbx, qword ptr [rdx + rbx]
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
or eax, 1495028166
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], dx
imul si, ax
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 58
bts cx, 176
or dl, dl
setbe bl
or eax, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
