.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rsi
bt cx, 3
bt si, cx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovz rdi, rcx
cmovnz ebx, ecx
btc rsi, 52
and ecx, 74
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
cmovns di, cx
or di, -18
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 64
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
cmovo bx, di
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
bt rbx, 76
or ax, -4635
test rsi, 879594088
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
