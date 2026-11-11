.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
bt ax, 76
test rdi, 77
and bl, -28 # instrumentation
cmovl rcx, rdx
or al, 30
xor bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 99
or dl, al
cmovnz bx, ax
or dl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
xor edx, 94
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
bts ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
