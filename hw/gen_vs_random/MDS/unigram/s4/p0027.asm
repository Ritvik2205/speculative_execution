.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73 # instrumentation
cmovns rdi, rax
or bl, 84
cmovnb ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
bt ax, si
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
cmovs ax, di
test sil, cl
jmp .bb_0.1
.bb_0.1:
and sil, -115 # instrumentation
cmovl dx, si
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
not si
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
bts di, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
