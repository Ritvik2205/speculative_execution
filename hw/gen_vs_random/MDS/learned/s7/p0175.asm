.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
or al, -17
or al, -78
xor rcx, 71
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 41
jmp .bb_0.3
.bb_0.3:
test al, 66
test al, sil
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and dl, -73
test sil, -96
xor al, sil
xor al, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
