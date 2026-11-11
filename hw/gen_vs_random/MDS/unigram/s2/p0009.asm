.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
bts esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 24
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
bt eax, edi
or dx, 32
and di, cx
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
btc di, 18
test al, al
test rax, 1732677821
bt edi, 254
bts edx, ecx
test rdx, -1624442902
bts rcx, 115
test ebx, 245771113
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
