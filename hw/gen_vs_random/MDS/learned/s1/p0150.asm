.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -696456144
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and bl, bl
or al, 24
or ax, 30524
test al, dl
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
test dl, 9
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
not dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
or dl, -8
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
or dil, cl
or al, dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
