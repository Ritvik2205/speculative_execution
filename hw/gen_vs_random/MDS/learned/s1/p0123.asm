.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test rbx, 39
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
or dl, -31
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, -978188247
or al, cl
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or bx, 27
test cl, 91
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and bl, 68
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor dx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
