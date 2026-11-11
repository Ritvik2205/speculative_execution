.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 12
and bl, 68
xor rax, -773894210
bt ax, cx
xor dx, 57
test eax, 343548072
xor al, 122
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 75
and sil, sil
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add dil, cl
and sil, -56
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, -17
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
