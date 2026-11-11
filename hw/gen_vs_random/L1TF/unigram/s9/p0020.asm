.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 18
cmovl edx, ebx
movsx rdi, di
xor ax, 34
btr eax, 47
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 42
and al, -68
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
add cl, 35 # instrumentation
sets bl
movzx edx, bl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
