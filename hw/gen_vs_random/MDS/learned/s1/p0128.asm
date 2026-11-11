.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
test al, cl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or dl, bl
bts si, 205
xor bl, -88
or bl, al
test al, bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
