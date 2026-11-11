.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
or al, dl
and rax, -636362975
and rbx, 65
xor dil, dl
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and al, bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
xor al, 115
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor rax, -773894210
test rbx, 81
test dl, 48
and eax, -829294476
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
