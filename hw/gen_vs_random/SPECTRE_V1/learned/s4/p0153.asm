.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and al, -23
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
xor bl, dl
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
