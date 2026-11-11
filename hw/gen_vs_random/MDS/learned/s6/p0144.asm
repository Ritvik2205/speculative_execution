.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 127
test bl, 65
xor cl, 15
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 62
and cl, bl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
cmovle bx, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
or dl, -89
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
