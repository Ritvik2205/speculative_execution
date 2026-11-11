.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test bl, cl
xor rbx, 89
xor al, 99
and rdx, 41
or sil, dl
or cl, 30
test rax, -359674714
and rdx, 45
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor dil, -3
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
