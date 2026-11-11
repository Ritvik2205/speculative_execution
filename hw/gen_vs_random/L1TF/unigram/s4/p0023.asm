.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
xor rbx, 100
neg esi
or ecx, ebx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
add bl, sil
xor dl, -82
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
cmovo rcx, rdi
or rax, -263404965
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 20
xor cl, 19
lea dx, qword ptr [rdx + rdx + 85]
lea rcx, qword ptr [rdx + rax]
xor dl, dl
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
