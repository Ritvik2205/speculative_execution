.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 23
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
add al, 64 # instrumentation
cmovnl rax, rcx
btr edx, eax
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
mul dx
cmp cl, -71
neg ax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 55
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
or al, -87
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
