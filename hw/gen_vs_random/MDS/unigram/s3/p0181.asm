.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and edx, -44
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and cl, -44 # instrumentation
cmovno rbx, rax
btc dx, ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test al, al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 61
and dl, 84 # instrumentation
cmovl rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
not eax
cmovnbe rcx, rax
bts bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
