.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnbe al
bts cx, 30
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmp edi, 39
and rdx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
btr eax, 91
lea ax, qword ptr [rdi]
or al, -87
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
setb bl
setp dil
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
