.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 984871847
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
xor eax, 1640090871
and rax, -1701787862
and dl, dl
or cl, 119
and sil, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
bts rax, rcx
xor al, 55
or dl, 85
xor rdi, -9
and eax, 943733866
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
