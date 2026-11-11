.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor bx, 8
and dil, dil
bts rdx, 200
or dl, 51
xor al, 9
xor bx, 72
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, -2039117613
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or al, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, 25
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
