.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or bl, -125
or al, bl
and ax, 19224
or al, dl
test bl, -14
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
bts edx, 189
and cl, cl
or al, al
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and bl, 68
btr bx, di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test rdi, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
