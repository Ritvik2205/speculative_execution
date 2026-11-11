.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, si
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
cmovnle ax, si
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
cmovnb bx, di
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
cmovns rdx, rax
cmovle ax, cx
jmp .bb_0.1
.bb_0.1:
or si, -12
btc ax, 68
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 59
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
bt si, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
