.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
btr ebx, esi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 81
bts rdx, rdi
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
xor cl, -13
or dl, cl
xor al, dil
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
and al, 35
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
