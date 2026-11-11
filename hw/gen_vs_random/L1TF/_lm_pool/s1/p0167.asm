.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 79
or al, -57
not sil
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
