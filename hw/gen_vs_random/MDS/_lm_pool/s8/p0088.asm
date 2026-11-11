.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 122
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
btr dx, si
and dl, dl
not al
xor bx, 60
or al, 54
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test sil, dil
or al, 74
or ax, 16560
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor rdi, -9
xor si, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
