.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
or dil, -71
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
btr edi, eax
btr ecx, edx
xor cl, 98
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 97
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 44
test ax, 6113
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
