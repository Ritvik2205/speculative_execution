.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
cmovnb rdi, rdi
test dl, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or ax, -23697
and dil, -62
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
bts bx, 3
and dl, 1 # instrumentation
cmovl ax, si
xor ax, -23364
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and eax, -85386306
test rax, rdx
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or edi, -88
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
