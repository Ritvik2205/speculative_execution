.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
not cl
xor dil, -70
and rax, 627810357
xor bl, dil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
or eax, -927349615
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 60
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
