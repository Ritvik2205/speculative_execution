.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
sbb eax, -108
inc esi
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xchg bl, al
lea rsi, qword ptr [rdx + rcx + 36993]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
xor al, -19
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add bl, -43 # instrumentation
adc si, -23
cmovle edi, ecx
cmovle rcx, rbx
or dl, sil
adc eax, 1725322202
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
