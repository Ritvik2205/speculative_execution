.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -21
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
bt bx, di
and edi, 23
bts rax, 77
xor sil, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and si, -121
and esi, 98
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and ax, 339
btr edi, edx
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
