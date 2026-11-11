.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bts rdx, 255
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
cmovp si, si
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 14
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
cmovp si, si
cmovnb edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test rsi, 879594088
and di, cx
cmovle di, di
cmovle edi, edx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
or dx, 24
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
btc rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
