.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
not bl
or al, dl
or dil, -41
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
xor bl, al
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
xor ax, -6793
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
or dil, bl
or dl, -8
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or ax, -4210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
