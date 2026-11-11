.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
and si, -121
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test al, bl
or al, -61
or eax, -900576213
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and si, -121
test bl, bl
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
