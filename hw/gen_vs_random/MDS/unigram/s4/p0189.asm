.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
btc rbx, rbx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and dil, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
btc ax, si
btr ebx, 0
and cl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and dl, 1 # instrumentation
cmovl di, cx
or dl, dl
btr dx, di
and cl, 123 # instrumentation
cmovo si, dx
btr ebx, ebx
not al
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rdx, 52
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
